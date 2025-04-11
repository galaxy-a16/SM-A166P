.class public Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
.super Ljava/lang/Object;
.source "RecentUsedPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public RogueApp:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mUnUsedTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.codoon.gps"

    const-string v2, "com.traffic.panda"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
    .locals 1

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 2

    const/4 p3, 0x4

    if-ne p4, p3, :cond_0

    const-wide/32 p3, 0xea60

    iput-wide p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-wide/32 p3, 0x493e0

    iput-wide p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    goto :goto_0

    :cond_1
    const-wide/32 p3, 0xdbba0

    iput-wide p3, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    :goto_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLastUsedTime(Ljava/lang/String;I)J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mUnUsedTime:J

    sub-long/2addr p3, v0

    cmp-long p0, p3, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-lez p0, :cond_2

    move p0, p1

    goto :goto_1

    :cond_2
    move p0, p2

    :goto_1
    if-nez p0, :cond_3

    return p1

    :cond_3
    return p2
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method
