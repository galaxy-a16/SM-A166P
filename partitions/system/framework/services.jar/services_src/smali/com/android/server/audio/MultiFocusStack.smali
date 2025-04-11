.class public Lcom/android/server/audio/MultiFocusStack;
.super Landroid/util/SparseArray;
.source "MultiFocusStack.java"


# direct methods
.method public static synthetic $r8$lambda$9RAXDHiaEGyGO4KEf3pqqzPDgks(ILcom/android/server/audio/FocusRequester;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->lambda$findFocusRequester$0(ILcom/android/server/audio/FocusRequester;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IGIDQoZ6KsarzxSMJPESAWyVU74(ILjava/lang/String;Lcom/android/server/audio/FocusRequester;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/MultiFocusStack;->lambda$findFocusRequester$1(ILjava/lang/String;Lcom/android/server/audio/FocusRequester;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$findFocusRequester$0(ILcom/android/server/audio/FocusRequester;)Z
    .locals 0

    .line 55
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$findFocusRequester$1(ILjava/lang/String;Lcom/android/server/audio/FocusRequester;)Z
    .locals 1

    .line 72
    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final findFocusRequester(Ljava/util/Stack;ILjava/lang/String;)Lcom/android/server/audio/FocusRequester;
    .locals 0

    .line 71
    invoke-virtual {p1}, Ljava/util/Stack;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p3}, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 72
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    return-object p0
.end method

.method public final findFocusRequester(Ljava/util/Stack;I)Ljava/util/ArrayList;
    .locals 0

    .line 54
    invoke-virtual {p1}, Ljava/util/Stack;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;-><init>(I)V

    .line 55
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda2;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFocusList(I)Ljava/util/ArrayList;
    .locals 1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;
    .locals 3

    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 61
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 62
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/audio/MultiFocusStack;->findFocusRequester(Ljava/util/Stack;ILjava/lang/String;)Lcom/android/server/audio/FocusRequester;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusRequester(IZ)Ljava/util/ArrayList;
    .locals 4

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 46
    invoke-virtual {p0, v2, p1}, Lcom/android/server/audio/MultiFocusStack;->findFocusRequester(Ljava/util/Stack;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/Stack;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFocusStack(I)Ljava/util/Stack;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object p0

    return-object p0
.end method

.method public final getStackForDevice(I)Ljava/util/Stack;
    .locals 1

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public pushFocusRequester(ILcom/android/server/audio/FocusRequester;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
