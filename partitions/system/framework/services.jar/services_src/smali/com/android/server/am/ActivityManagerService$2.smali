.class public Lcom/android/server/am/ActivityManagerService$2;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetAppLaunchFlag(Lcom/android/server/am/ActivityManagerService;Z)V

    return-void
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetAppLaunchFlag(Lcom/android/server/am/ActivityManagerService;Z)V

    return-void
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler;->onActivityLaunched()V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetAppLaunchFlag(Lcom/android/server/am/ActivityManagerService;Z)V

    return-void
.end method
