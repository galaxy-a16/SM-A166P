.class public final Lcom/android/server/devicepolicy/MostRestrictive;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "MostRestrictive.java"


# instance fields
.field public mMostToLeastRestrictive:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getParcelableResolutionMechanism()Landroid/app/admin/MostRestrictive;
    .locals 1

    .line 52
    new-instance v0, Landroid/app/admin/MostRestrictive;

    iget-object p0, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-direct {v0, p0}, Landroid/app/admin/MostRestrictive;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/MostRestrictive;->getParcelableResolutionMechanism()Landroid/app/admin/MostRestrictive;

    move-result-object p0

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 2

    .line 36
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 46
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/PolicyValue;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MostRestrictive { mMostToLeastRestrictive= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
