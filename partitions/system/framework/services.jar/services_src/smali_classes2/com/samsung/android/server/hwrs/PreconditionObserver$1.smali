.class public Lcom/samsung/android/server/hwrs/PreconditionObserver$1;
.super Landroid/os/Handler;
.source "PreconditionObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    iget v0, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$mhandleMessageWhat(Lcom/samsung/android/server/hwrs/PreconditionObserver;II)V

    return-void
.end method
