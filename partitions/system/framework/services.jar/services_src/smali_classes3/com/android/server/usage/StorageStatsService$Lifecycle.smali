.class public Lcom/android/server/usage/StorageStatsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageStatsService.java"


# instance fields
.field public mService:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 115
    new-instance v0, Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/usage/StorageStatsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService$Lifecycle;->mService:Lcom/android/server/usage/StorageStatsService;

    const-string/jumbo v1, "storagestats"

    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
