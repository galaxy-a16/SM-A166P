.class public Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# static fields
.field public static final sPool:Lcom/android/server/usage/AppStandbyController$Pool;


# instance fields
.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 571
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Pool;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppStandbyController$Pool;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
    .locals 1

    .line 580
    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;-><init>()V

    .line 584
    :cond_0
    iput-object p0, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    .line 585
    iput-object p1, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    .line 586
    iput p2, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 591
    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    return-void
.end method
