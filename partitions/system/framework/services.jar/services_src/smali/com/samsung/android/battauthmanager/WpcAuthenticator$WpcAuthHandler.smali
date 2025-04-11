.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;
.super Landroid/os/Handler;
.source "WpcAuthenticator.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final getNameOfMsgWhat(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "MSG_AUTH_STOP"

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "MSG_AUTH_START"

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne p0, p1, :cond_2

    const-string p0, "MSG_AUTH_REQ_DIGEST"

    return-object p0

    :cond_2
    const/4 p0, 0x3

    if-ne p0, p1, :cond_3

    const-string p0, "MSG_AUTH_GET_AND_CHECK_DIGEST"

    return-object p0

    :cond_3
    const/4 p0, 0x4

    if-ne p0, p1, :cond_4

    const-string p0, "MSG_AUTH_REQ_CERT_CHAIN"

    return-object p0

    :cond_4
    const/4 p0, 0x5

    if-ne p0, p1, :cond_5

    const-string p0, "MSG_AUTH_GET_AND_VERIFY_CERT_CHAIN"

    return-object p0

    :cond_5
    const/4 p0, 0x7

    if-ne p0, p1, :cond_6

    const-string p0, "MSG_AUTH_REQ_CHALLENGE"

    return-object p0

    :cond_6
    const/16 p0, 0x8

    if-ne p0, p1, :cond_7

    const-string p0, "MSG_AUTH_GET_AND_VERIFY_CHALLENGE"

    return-object p0

    :cond_7
    const/16 p0, 0x3e8

    if-ne p0, p1, :cond_8

    const-string p0, "MSG_AUTH_TIMEOUT"

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_c

    const/16 v1, 0x3e8

    if-eq v0, v4, :cond_a

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x7

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    if-eq v0, v6, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, timeout after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$mgetAndVerifyChallenge(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v0, p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$mrequestChallengeAuth(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage, success req challenge"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v1, 0x15f90

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fputcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;I)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$mgetAndVerifyCertChain(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage, success verify cert"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$mrequestCertChain(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage, success req cert"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0, v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fputcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;I)V

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$mgetAndCheckDigests(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage, check digest fail, req cert chain"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$mrequestDigests(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage, requestDigests fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage, success req digests"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0, v3}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fputcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;I)V

    goto/16 :goto_0

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmAuthWakeLock(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmAuthWakeLock(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/32 v0, 0x124f80

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmBattAuthHelper(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/BattAuthHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->open_batt_misc()I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_e

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail to open_batt_misc"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_e
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_f
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage, auth stop"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmAuthWakeLock(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmAuthWakeLock(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_10
    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmBattAuthHelper(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/BattAuthHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->close_batt_misc()I

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fputcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;I)V

    :goto_0
    return-void
.end method
