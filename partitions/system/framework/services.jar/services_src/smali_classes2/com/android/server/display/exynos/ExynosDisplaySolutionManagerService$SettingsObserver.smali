.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ExynosDisplaySolutionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$msettingChanged(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)V

    return-void
.end method
