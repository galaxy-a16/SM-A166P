.class public Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# instance fields
.field public appLastServiceStartTime:J

.field public appLastServiceStopTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 152
    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 153
    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>()V

    return-void
.end method
