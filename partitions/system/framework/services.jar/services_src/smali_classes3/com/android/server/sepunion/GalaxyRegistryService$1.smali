.class public Lcom/android/server/sepunion/GalaxyRegistryService$1;
.super Landroid/content/BroadcastReceiver;
.source "GalaxyRegistryService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/GalaxyRegistryService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$1;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$1;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-static {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$mstartService(Lcom/android/server/sepunion/GalaxyRegistryService;)V

    :cond_0
    return-void
.end method
