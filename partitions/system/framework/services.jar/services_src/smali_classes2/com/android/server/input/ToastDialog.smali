.class public Lcom/android/server/input/ToastDialog;
.super Ljava/lang/Object;
.source "ToastDialog.java"


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

.field public mToast:Landroid/widget/Toast;


# direct methods
.method public static bridge synthetic -$$Nest$mshowAlertDialogInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/ToastDialog;->showAlertDialogInner(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowAlertDialogWKSInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/ToastDialog;->showAlertDialogWKSInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowToastInner(Lcom/android/server/input/ToastDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/ToastDialog;->showToastInner(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 65
    new-instance p1, Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/input/ToastDialog$ToastDialogHandler;-><init>(Lcom/android/server/input/ToastDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    return-void
.end method


# virtual methods
.method public dismissAlertDialogWKS()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public final showAlertDialogInner(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 220
    iget-object p3, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x10302d1

    goto :goto_0

    :cond_1
    const p3, 0x10302d2

    .line 223
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/server/input/ToastDialog$2;

    invoke-direct {p2, p0}, Lcom/android/server/input/ToastDialog$2;-><init>(Lcom/android/server/input/ToastDialog;)V

    const p3, 0x104000a

    .line 226
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 232
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 233
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method public showAlertDialogWKS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 138
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 139
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 140
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showAlertDialogWKSInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10302d1

    goto :goto_0

    :cond_1
    const v0, 0x10302d2

    .line 201
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 202
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/server/input/ToastDialog$1;

    invoke-direct {p2, p0}, Lcom/android/server/input/ToastDialog$1;-><init>(Lcom/android/server/input/ToastDialog;)V

    const v0, 0x104000a

    .line 204
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 211
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final showToastInner(Ljava/lang/String;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    .line 190
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToastWKSDeviceSwitching(Ljava/lang/String;)V
    .locals 2

    .line 69
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 70
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showToastWKSParingFail(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 84
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showToastWKSRegister()V
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public showToastWKSUnregister(Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 77
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUntrustedTouch(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 117
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showWarningWrongPogo(Ljava/lang/String;)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 124
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
