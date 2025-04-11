.class public Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# instance fields
.field public appLastLaunchTime:J

.field public appLastPausetime:J

.field public appLaunchCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>()V

    return-void
.end method
