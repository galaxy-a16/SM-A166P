.class public abstract Lcom/android/server/alarm/AppSyncWrapper;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"


# static fields
.field public static final LOG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    .line 1248
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/alarm/AppSyncWrapper;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getWindowLength()J
.end method

.method public abstract isAdjustableAlarm(IJJJILjava/lang/String;)Z
.end method
