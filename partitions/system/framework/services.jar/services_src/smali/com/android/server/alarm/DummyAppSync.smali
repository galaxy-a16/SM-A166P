.class public Lcom/android/server/alarm/DummyAppSync;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "AppSyncInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/alarm/AppSyncWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    const-string p0, "<AppSync Disabled>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getWindowLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isAdjustableAlarm(IJJJILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
