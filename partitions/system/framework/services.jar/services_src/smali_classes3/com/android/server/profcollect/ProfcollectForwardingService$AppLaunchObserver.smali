.class public Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ProfcollectForwardingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    return-void
.end method


# virtual methods
.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mtraceOnAppStart(Lcom/android/server/profcollect/ProfcollectForwardingService;Ljava/lang/String;)V

    return-void
.end method
