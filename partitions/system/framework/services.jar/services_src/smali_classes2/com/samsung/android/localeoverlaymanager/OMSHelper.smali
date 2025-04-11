.class public Lcom/samsung/android/localeoverlaymanager/OMSHelper;
.super Ljava/lang/Object;
.source "OMSHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OMSHelper"


# instance fields
.field public final mService:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public static synthetic $r8$lambda$EgxBeIE817hFJyxGgSKSIYaXnqo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->lambda$applySamsungConfigChangeOverlays$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gUoA5GXYCx2LkgWW7P5Ip_s82N8(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->lambda$getLocaleOverlaysMap$3(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$imIGdfA5_12nzhI21RaZcNS8UrI(Ljava/util/List;Landroid/content/om/OverlayInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->lambda$getLocaleOverlaysForUser$2(Ljava/util/List;Landroid/content/om/OverlayInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrCFZp-sCp9EaUCrk0OcVFW9X_E(Ljava/util/Set;Ljava/util/List;Landroid/content/om/OverlayInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->lambda$getUnReqLocaleOverlaysForUser$4(Ljava/util/Set;Ljava/util/List;Landroid/content/om/OverlayInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zi7pdrpHVAWynngoGjO4pgCu1do(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->lambda$applySamsungConfigChangeOverlays$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerService;

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    return-void
.end method

.method public static synthetic lambda$applySamsungConfigChangeOverlays$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/overlays/current_locale_apks/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$applySamsungConfigChangeOverlays$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/overlays/current_locale_apks/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getLocaleOverlaysForUser$2(Ljava/util/List;Landroid/content/om/OverlayInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-static {p1, v0}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getLocaleOverlaysMap$3(Landroid/content/om/OverlayInfo;)Z
    .locals 1

    .line 126
    iget-object p0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string/jumbo v0, "zipped-overlay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$getUnReqLocaleOverlaysForUser$4(Ljava/util/Set;Ljava/util/List;Landroid/content/om/OverlayInfo;)V
    .locals 3

    const/4 v0, 0x1

    .line 154
    invoke-static {p2, v0}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 157
    iget-object p0, p2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 6

    .line 48
    sget-object p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying change disabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying change enabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p0, Landroid/content/om/OverlayManagerExt;

    invoke-direct {p0}, Landroid/content/om/OverlayManagerExt;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0xac

    .line 57
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda7;-><init>()V

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 59
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 60
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 62
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda7;-><init>()V

    .line 63
    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 64
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 65
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, [Ljava/lang/String;

    .line 67
    new-instance p2, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    move-object v0, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;-><init>([Ljava/lang/String;IIILandroid/content/om/ISamsungOverlayCallback;)V

    .line 69
    invoke-virtual {p2, p1}, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->addPathsToRemove([Ljava/lang/String;)Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    .line 71
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/om/OverlayManagerExt;->replaceOverlays(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDisabledOverlaysPackages(Ljava/util/Set;)Ljava/util/List;
    .locals 5

    .line 172
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisabledOverlaysPackages, localeOverlayTargetApks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->getLocaleOverlaysForUser(I)Ljava/util/List;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    if-eqz v1, :cond_0

    .line 177
    iget-object v2, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    sget-object v2, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", overPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLocaleOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 195
    sget-object p1, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocaleOverlayInfosForTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 196
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlays List size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/om/OverlayInfo;

    const/4 v1, 0x1

    .line 199
    invoke-static {p1, v1}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLocaleOverlaysForUser(I)Ljava/util/List;
    .locals 2

    .line 94
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->getAllOverlays(I)Ljava/util/Map;

    move-result-object p0

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 101
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getLocaleOverlaysMap(I)Ljava/util/Map;
    .locals 2

    .line 119
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->getAllOverlays(I)Ljava/util/Map;

    move-result-object p0

    .line 121
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 125
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getTargetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->getTargetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnReqLocaleOverlaysForUser(ILjava/util/Set;)Ljava/util/List;
    .locals 2

    .line 144
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->getAllOverlays(I)Ljava/util/Map;

    move-result-object p0

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 151
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public updatePackageCache(Ljava/lang/String;I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updatePackageCache(Ljava/lang/String;I)V

    return-void
.end method
