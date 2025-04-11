.class public Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;
.super Lcom/android/internal/net/INetdTetherEventListener$Stub;
.source "NetworkManagementService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/internal/net/INetdTetherEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onTetherStart()V
    .locals 2

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "send intent to KVES to inform tether has started"

    .line 940
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$msendusbTetheringUpdate(Lcom/android/server/net/NetworkManagementService;)V

    return-void
.end method

.method public onTetherStop()V
    .locals 0

    .line 0
    return-void
.end method
