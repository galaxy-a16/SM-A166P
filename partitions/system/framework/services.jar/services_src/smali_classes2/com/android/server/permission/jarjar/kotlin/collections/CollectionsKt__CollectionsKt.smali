.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;
.super Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;
.source "Collections.kt"


# direct methods
.method public static final emptyList()Ljava/util/List;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    return-object v0
.end method

.method public static final optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 295
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
