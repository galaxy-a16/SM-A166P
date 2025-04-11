.class public Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;
.super Ljava/lang/Thread;
.source "DDLog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "DDAR Logger started running"

    const-string v1, "DualDAR:DDLog:Logger"

    .line 338
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetloggerRunning(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetstoreQ(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetfos(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetfos(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetstoreQ(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$mrealStore(Lcom/android/server/knox/dar/ddar/DDLog$Logger;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception in log worker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
