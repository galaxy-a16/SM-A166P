.class public final Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
.super Landroid/os/Handler;
.source "WifiDisplayMcfManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$mhandleMcfManagerStatus(Lcom/android/server/display/WifiDisplayMcfManager;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$munbindBleAdvertiserService(Lcom/android/server/display/WifiDisplayMcfManager;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$mhandleRetryStartScanBleScanner(Lcom/android/server/display/WifiDisplayMcfManager;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$mbindMcfAdapter(Lcom/android/server/display/WifiDisplayMcfManager;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$mhandleMcfAdapterScannerScanResult(Lcom/android/server/display/WifiDisplayMcfManager;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$mhandleMcfAdapterServiceDisconnected(Lcom/android/server/display/WifiDisplayMcfManager;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const-class v0, Lcom/samsung/android/mcf/McfAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/McfAdapter;

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$mhandleMcfAdapterServiceConnected(Lcom/android/server/display/WifiDisplayMcfManager;Lcom/samsung/android/mcf/McfAdapter;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$mhandleMcfServiceStateChanged(Lcom/android/server/display/WifiDisplayMcfManager;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
