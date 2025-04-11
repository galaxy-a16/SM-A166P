.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatures;
.super Ljava/lang/Object;
.source "PackageFeatures.java"


# instance fields
.field public mAllFeaturesDisabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mGroups:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$6bv703M16_wiGPpoP4Ylz8HA_bI(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$new$0(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ArhKDwiA3pnapiVdVydhXpI4CTk(Ljava/util/function/Consumer;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$forAllGroups$1(Ljava/util/function/Consumer;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GTHA5Xs1UMTsUBv61LS4hbHG-Vg(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RFjClcbGecBakUuQbBHDRkUbrfM(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->isAllFeaturesDisabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$adLWiRza5YvIFHXY_owka0bA_oU(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$updateAllFeaturesDisabled$2(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/PackageFeatureController;Lcom/samsung/android/server/util/CoreLogger;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p1, v1

    iget-boolean v2, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageFeatureGroup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not enabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p4, v3, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-boolean v2, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    if-eqz v2, :cond_1

    new-instance v9, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    move-object v2, v9

    move-object v5, p4

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    move-object v2, v9

    move-object v5, p4

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    iget-object v3, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;

    invoke-direct {p0, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$forAllGroups$1(Ljava/util/function/Consumer;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->setPackageFeatureController(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateAllFeaturesDisabled$2(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllFeaturesDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forAllGroups(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    return-object p0
.end method

.method public getGroupNames()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final isAllFeaturesDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    return p0
.end method

.method public updateAllFeaturesDisabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    new-instance p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method
