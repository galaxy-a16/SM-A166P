.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;
.super Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;
.source "RemoteAppModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public onSecuredAppLaunched(ILjava/lang/String;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {p0, p1, p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monSecuredAppLaunched(Lcom/android/server/remoteappmode/RemoteAppModeService;ILjava/lang/String;)V

    return-void
.end method

.method public onSecuredAppRemoved(ILjava/lang/String;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {p0, p1, p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monSecuredAppRemoved(Lcom/android/server/remoteappmode/RemoteAppModeService;ILjava/lang/String;)V

    return-void
.end method
