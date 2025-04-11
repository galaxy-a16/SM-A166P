.class public final Lcom/android/server/input/ToastDialog$ToastDialogHandler;
.super Landroid/os/Handler;
.source "ToastDialog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/ToastDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/input/ToastDialog;Landroid/os/Looper;)V
    .locals 1

    .line 145
    iput-object p1, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 173
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 174
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 175
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 176
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 177
    iget-object p0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-static {p0, v1, p1, v0}, Lcom/android/server/input/ToastDialog;->-$$Nest$mshowAlertDialogInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 167
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 168
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 169
    iget-object p0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/ToastDialog;->-$$Nest$mshowAlertDialogWKSInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v0}, Lcom/android/server/input/ToastDialog;->dismissAlertDialogWKS()V

    .line 160
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 161
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 162
    iget-object p0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-static {p0, p1}, Lcom/android/server/input/ToastDialog;->-$$Nest$mshowToastInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
