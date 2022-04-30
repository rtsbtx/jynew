/*
 * 金庸群侠传3D重制版
 * https://github.com/jynew/jynew
 *
 * 这是本开源项目文件头，所有代码均使用MIT协议。
 * 但游戏内资源和第三方插件、dll等请仔细阅读LICENSE相关授权协议文档。
 *
 * 金庸老先生千古！
 */


using Jyx2;
using Lean.Pool;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Cysharp.Threading.Tasks;
using Jyx2.MOD;
using Jyx2.Middleware;
using Jyx2Configs;
using ProtoBuf;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.UI;
using Object = UnityEngine.Object;

namespace Jyx2
{
    public static class ImageLoadHelper
    {
        public static void LoadAsyncForget(this Image image, UniTask<Sprite> task)
        {   
            LoadAsync(image,task).Forget();
        }
        
        public static async UniTask LoadAsync(this Image image, UniTask<Sprite> task)
        {
            image.gameObject.SetActive(false);
            image.sprite = await task;
            image.gameObject.SetActive(true);
        }
    }
}

public static class Jyx2ResourceHelper
{
    private static bool _isInited = false;
    
    public static async Task Init()
    {
        //已经初始化过了
        if (_isInited)
        {
            return;
        }

        _isInited = true;
        
        await MODLoader.Init();
        
        //全局配置表
        var t = await MODLoader.LoadAsset<GlobalAssetConfig>("GlobalAssetConfig.asset");
        if (t != null)
        {
            GlobalAssetConfig.Instance = t;
            t.OnLoad();
        }

        //生成MOD的文件索引
        MODLoader.WriteModIndexFile(t.startMod.ModRootDir);

        //技能池
        var overridePaths = await MODLoader.LoadOverrideList($"{t.startMod.ModRootDir}/Skills");
        var allSkills = await MODLoader.LoadAssets<Jyx2SkillDisplayAsset>(overridePaths);
        if (allSkills != null)
        {
            Jyx2SkillDisplayAsset.All = allSkills;
        }

        //基础配置表
        await GameConfigDatabase.Instance.Init(t.startMod.ModRootDir);

        //lua
        await LuaManager.InitLuaMapper(t.startMod.ModRootDir);
        
        //执行lua根文件
        LuaManager.Init(t.rootLuaFile.text);
    }

    public static GameObject GetCachedPrefab(string path)
    {
        if(GlobalAssetConfig.Instance.CachePrefabDict.TryGetValue(path, out var prefab))
        {
            return prefab;
        }
        
        Debug.LogError($"载入缓存的Prefab失败：{path}(是否没填入GlobalAssetConfig.CachedPrefabs?)");
        return null;
    }

    public static GameObject CreatePrefabInstance(string path)
    {
        var obj = GetCachedPrefab(path);
        return Object.Instantiate(obj);
    }

    public static void ReleasePrefabInstance(GameObject obj)
    {
        Object.Destroy(obj);
    }

    [Obsolete("待修改为tilemap")]
    public static async UniTask<SceneCoordDataSet> GetSceneCoordDataSet(string sceneName)
    {
        string path = $"{ConStr.BattleBlockDatasetPath}{sceneName}_coord_dataset.bytes";
        var result = await MODLoader.LoadAsset<TextAsset>(path);
        using var memory = new MemoryStream(result.bytes);
        return Serializer.Deserialize<SceneCoordDataSet>(memory);
    }



    public static async UniTask<Jyx2NodeGraph> LoadEventGraph(int id)
    {
        string url = $"Assets/BuildSource/EventsGraph/{id}.asset";
        var rst = await Addressables.LoadResourceLocationsAsync(url).Task;
        if (rst.Count == 0)
        {
            return null;
        }

        return await MODLoader.LoadAsset<Jyx2NodeGraph>(url);
    }
    
    //根据Addressable的Ref查找他实际存储的路径
    public static string GetAssetRefAddress(AssetReference reference, Type type)
    {
        foreach (var locator in Addressables.ResourceLocators)
        {
            if (locator.Locate(reference.AssetGUID, type, out var locs))
            {
                foreach (var loc in locs)
                {
                    return loc.ToString();
                }
            }
        }

        return "";
    }
}