.class public Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;
.super Landroid/location/provider/ILocationProviderManager$Stub;
.source "ProxyLocationProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$0HrhTIqcmHDS-csdTyDa3Nr6bPU(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->lambda$onInitialize$0(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-direct {p0}, Landroid/location/provider/ILocationProviderManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onInitialize$0(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 269
    sget-object p4, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 270
    invoke-virtual {p4, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withAllowed(Z)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withIdentity(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    .line 273
    invoke-virtual {p0, p3}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withExtraAttributionTags(Ljava/util/Set;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onFlushComplete()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v2, p0, :cond_0

    .line 331
    monitor-exit v0

    return-void

    .line 333
    :cond_0
    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 336
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 339
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 336
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v2, p0, :cond_0

    .line 244
    monitor-exit v0

    return-void

    .line 247
    :cond_0
    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 248
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android:location_allow_listed_tags"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, ";"

    .line 257
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v4, v4, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider loaded extra attribution tags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 266
    invoke-virtual {v1}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v1, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 269
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;)V

    invoke-static {p0, v1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$100(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V

    .line 274
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReportLocation(Landroid/location/Location;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v2, p0, :cond_0

    .line 306
    monitor-exit v0

    return-void

    .line 309
    :cond_0
    filled-new-array {p1}, [Landroid/location/Location;

    move-result-object p0

    invoke-static {p0}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$400(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V

    .line 310
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReportLocations(Ljava/util/List;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v2, p0, :cond_0

    .line 318
    monitor-exit v0

    return-void

    .line 321
    :cond_0
    invoke-static {p1}, Landroid/location/LocationResult;->wrap(Ljava/util/List;)Landroid/location/LocationResult;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$500(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V

    .line 322
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSetAllowed(Z)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v2, p0, :cond_0

    .line 294
    monitor-exit v0

    return-void

    .line 297
    :cond_0
    invoke-static {v1, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$300(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Z)V

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSetProperties(Landroid/location/provider/ProviderProperties;)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v2, p0, :cond_0

    .line 282
    monitor-exit v0

    return-void

    .line 285
    :cond_0
    invoke-static {v1, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$200(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/provider/ProviderProperties;)V

    .line 286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
