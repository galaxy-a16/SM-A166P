.class public Lcom/android/server/VpnManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "VpnManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/VpnManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/VpnManagerService;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/android/server/VpnManagerService$2;->this$0:Lcom/android/server/VpnManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 881
    iget-object p2, p0, Lcom/android/server/VpnManagerService$2;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p2}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 884
    iget-object p2, p0, Lcom/android/server/VpnManagerService$2;->this$0:Lcom/android/server/VpnManagerService;

    invoke-virtual {p2}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 887
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
