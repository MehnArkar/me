'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "536dc42524442522d15a255b5eeebed3",
"index.html": "9a2815e36504517261b8bdebe6c90917",
"/": "9a2815e36504517261b8bdebe6c90917",
"main.dart.js": "88a92a0b127a2771763fa5c01b686855",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ced3ba7467ff896d36e19ef49aa6114d",
"assets/AssetManifest.json": "c1fe4ba14ea55f4eae377f839974d685",
"assets/NOTICES": "143e001547e3465f256601907e0dd068",
"assets/FontManifest.json": "c97c79d9a3179096bec614288c409c79",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/dino_game.png": "0790198c7c0b9afd904bd3f73a1edf56",
"assets/assets/images/vector_one.svg": "e5a51ab835886538d623d019a2e53f28",
"assets/assets/images/dino.png": "91b97d389b5094ba4f5fa35b1489e2e4",
"assets/assets/images/tree.png": "1d6eed1e89fc833cea34a560a7dbd9f2",
"assets/assets/images/profile.jpeg": "0bc16035c9dd921c73216d82295cf182",
"assets/assets/images/cards_assets/6D.png": "ff4cf87df8c9456d32e92c95d904b2fd",
"assets/assets/images/cards_assets/5H.png": "3b9435f5eb0b4c5880ee412f8d863dab",
"assets/assets/images/cards_assets/6S.png": "192df24353c5e37fdfe40f88af332f41",
"assets/assets/images/cards_assets/7C.png": "0097c04ba3f8c9e4662efb0d74b5533b",
"assets/assets/images/cards_assets/AS.png": "65b4d16141813ceb206818151191873d",
"assets/assets/images/cards_assets/AD.png": "93b58802988970e4c660b41fc99e3387",
"assets/assets/images/cards_assets/9H.png": "46125755f14dcef330a5f74a575afd1b",
"assets/assets/images/cards_assets/8H.png": "d921c2288a96a8a78369ddb3c11aa2a8",
"assets/assets/images/cards_assets/6C.png": "c5d5f419fdf69aaabd8ecec72e75ffb3",
"assets/assets/images/cards_assets/7D.png": "02156b898ec20cd989ba093f765cf9bb",
"assets/assets/images/cards_assets/7S.png": "b2028020b98ba71e3937eb42073abe15",
"assets/assets/images/cards_assets/4H.png": "1a189af2d047d249eee0205f15254358",
"assets/assets/images/cards_assets/AC.png": "ba4133ac7ea6383fa292328cb42bfbe3",
"assets/assets/images/cards_assets/QH.png": "97bab12f24d6072753da4ca0b81baa23",
"assets/assets/images/cards_assets/JC.png": "cc35bbb7d7c0b0b369304349e947ea04",
"assets/assets/images/cards_assets/0D.png": "2b1024bed0d766b32f4bd8e50a892d47",
"assets/assets/images/cards_assets/3H.png": "31db07982fe4c0c6808f847f247a8d69",
"assets/assets/images/cards_assets/0S.png": "691685e5500df5705dcccbbfebf4dd62",
"assets/assets/images/cards_assets/KS.png": "843f3d93735fd30ba0699ce2e6ad1385",
"assets/assets/images/cards_assets/KD.png": "e7570305a1aa95c48f490c47f741ea01",
"assets/assets/images/cards_assets/JS.png": "e8642bf77b0d0e2b62d9943a133efbc3",
"assets/assets/images/cards_assets/JD.png": "627595585b47e627ed0312c91e9ca950",
"assets/assets/images/cards_assets/2H.png": "86c34830745b1d3b563f6e6f8d5c170e",
"assets/assets/images/cards_assets/KC.png": "247ffd29154b48fe7408897e65dc8a4c",
"assets/assets/images/cards_assets/0C.png": "4b8b1766ddc4e863a2cc14515f3ac0ab",
"assets/assets/images/cards_assets/3C.png": "0e4f09047f51677396191283c1c3a3b4",
"assets/assets/images/cards_assets/JH.png": "00fce2b9e961bb30f171ec2562e4782f",
"assets/assets/images/cards_assets/2S.png": "eb32b3a0f74c473fbc1c1321a9266066",
"assets/assets/images/cards_assets/2D.png": "ec67e08a24a14b3379e3b935a069498b",
"assets/assets/images/cards_assets/QC.png": "af3e1c110341c06cac6713ed2889c7e6",
"assets/assets/images/cards_assets/0H.png": "0df35df482ce13edaabeae06f3fe4db7",
"assets/assets/images/cards_assets/3S.png": "93bd6437cabc21a85547d8c0e7254474",
"assets/assets/images/cards_assets/3D.png": "d63b5a5a34d1aede7ec3f4ea0ce0e90f",
"assets/assets/images/cards_assets/KH.png": "2f61b2867fc5df85e24e0bbe0692125f",
"assets/assets/images/cards_assets/QS.png": "b91ec0a2a154b88bee31c63b91da7e35",
"assets/assets/images/cards_assets/QD.png": "2df2193597c07054e836007608514725",
"assets/assets/images/cards_assets/2C.png": "a3a84c80f28945a5b10ca9a1ef3b5221",
"assets/assets/images/cards_assets/9C.png": "3c828767dd632861dc7f8edb4a86fb17",
"assets/assets/images/cards_assets/4S.png": "0076fdcb3a7e18ac7768f3acfb95d0a4",
"assets/assets/images/cards_assets/7H.png": "49ad39f7f05e4b41491e2251d9b6774d",
"assets/assets/images/cards_assets/4D.png": "3dd975fec3a79a8e9cd7c12070384f95",
"assets/assets/images/cards_assets/8S.png": "ad4b98d8d4ae9eab2da5daf7a8f4b989",
"assets/assets/images/cards_assets/8D.png": "a0762887fff057f2c45eba5cbe763269",
"assets/assets/images/cards_assets/5C.png": "de3d4e06f84033ec1988aaf1467cce24",
"assets/assets/images/cards_assets/4C.png": "33352ef976153b30f5e356da3ba2ee4c",
"assets/assets/images/cards_assets/AH.png": "ca12794e7a322972164687f95d251572",
"assets/assets/images/cards_assets/9S.png": "155901cd40c3327ff7ca9756d7b92bc6",
"assets/assets/images/cards_assets/9D.png": "24353f4c8a10ea37e29c43c800c3639d",
"assets/assets/images/cards_assets/6H.png": "3390eb542ffb6795a048da372c871106",
"assets/assets/images/cards_assets/5S.png": "39fe29330e6c34d06c2210784f76648b",
"assets/assets/images/cards_assets/5D.png": "bddbea02a2211da87aa8c8dad696518c",
"assets/assets/images/cards_assets/8C.png": "f665875c756d4095319cb2e2244e43f0",
"assets/assets/images/phone.png": "6da563ad9dfd4bcc3490f37ba3f72eea",
"assets/assets/images/mockup/merchant1.png": "f946926ed039a7c431a8ee61ea2ec989",
"assets/assets/images/mockup/merchant2.png": "7faa23433520e520070679872603c229",
"assets/assets/images/mockup/l2e1.png": "2abc78fe4cad89e77f26e4963c2cbc1f",
"assets/assets/images/mockup/l2e2.png": "6d546708670cb799b6da6e22ba59e966",
"assets/assets/images/mockup/driver1.png": "d653bf4db00bfcded125f64452a95121",
"assets/assets/images/mockup/driver2.png": "ec91d48197d7e83956fcc03197d6df02",
"assets/assets/images/mockup/fary1.png": "48fbb358698f6951e2a2e2aab1dc5741",
"assets/assets/images/mockup/getbak2.png": "d270f7bb93823d943464b708c85f42aa",
"assets/assets/images/mockup/fary2.png": "39c75de49900d3137e660ac635cc1bfb",
"assets/assets/images/mockup/getbak1.png": "ea98ceef3ffa3e0de4fd12289664115b",
"assets/assets/images/skm_game.png": "92570d95854880db10e308e1799f632f",
"assets/assets/images/blob.svg": "b62364f2997de06e93676ea4658db38e",
"assets/assets/icons/android.svg": "3c06887549e4f76d4d9ee52d1c16b49f",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/ios.svg": "70e6aa05536ac81e32b581a474a4716c",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/fonts/book-bold.ttf": "3fb25b19a1539ed7d022fc56c8261228",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/book-regular.ttf": "9993f47655869839cc045a99d2bc7e2d",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
