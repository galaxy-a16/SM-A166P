.class public Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
.super Ljava/lang/Object;
.source "RunningLocationFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mapAppPackages:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/com/android/server/am/mars/database/MARsListManager;->getLocationAppPackages()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;->mapAppPackages:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/RunningLocationFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 0
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 1

    .line 36
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result p4

    .line 37
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/am/FreecessController;->isInGPSAllowList(I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/16 p3, 0xf

    if-eqz p4, :cond_2

    .line 42
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;->mapAppPackages:Ljava/util/Set;

    .line 43
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return p3

    .line 45
    :cond_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 46
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    return p3

    :cond_3
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method
