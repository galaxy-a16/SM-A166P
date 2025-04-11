.class public Lcom/android/server/power/ShutdownDialog$1;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmLogString(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "ShutdownDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmLogView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmLogView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmLogString(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
