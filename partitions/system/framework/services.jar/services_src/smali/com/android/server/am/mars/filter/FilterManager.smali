.class public Lcom/android/server/am/mars/filter/FilterManager;
.super Ljava/lang/Object;
.source "FilterManager.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

.field public final mFF:Lcom/android/server/am/mars/filter/FilterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/FilterManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/FilterManager;
    .locals 1

    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/FilterFactory;->deInit()V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->deInit()V

    return-void
.end method

.method public final filter(ILjava/lang/String;II)I
    .locals 3

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getFilterChain(I)Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/am/mars/filter/FilterChain;->filter(Ljava/lang/String;III)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public filterForChimera(Ljava/lang/String;II)I
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x11

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/server/am/mars/filter/IFilter;->filter(Ljava/lang/String;III)I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr p0, v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public filterForSpecificPolicy(ILjava/lang/String;II)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterManager;->setContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/am/mars/filter/FilterFactory;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->init(Landroid/content/Context;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    return-void
.end method
