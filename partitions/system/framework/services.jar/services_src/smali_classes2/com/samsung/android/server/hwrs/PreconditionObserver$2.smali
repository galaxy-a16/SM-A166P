.class public Lcom/samsung/android/server/hwrs/PreconditionObserver$2;
.super Ljava/lang/Object;
.source "PreconditionObserver.java"

# interfaces
.implements Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$StateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->meetConditions()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-static {v0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/hwrs/PreconditionObserver;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChanged - isValid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-static {p2, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$fputmIsValidState(Lcom/samsung/android/server/hwrs/PreconditionObserver;Z)V

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-static {p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/hwrs/PreconditionObserver;)Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x3

    const/4 v2, 0x2

    const-string v3, "hwrs_service"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->setValues(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-static {p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$fgetmIsTablet(Lcom/samsung/android/server/hwrs/PreconditionObserver;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-static {p1, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/hwrs/PreconditionObserver;I)V

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeAndSendMessageDelayed(IJ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->setValues(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-static {p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$fgetmIsTablet(Lcom/samsung/android/server/hwrs/PreconditionObserver;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-static {p1, v2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/hwrs/PreconditionObserver;I)V

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeAndSendMessageDelayed(IJ)V

    :cond_2
    :goto_0
    return-void
.end method
