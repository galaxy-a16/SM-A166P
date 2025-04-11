.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/g;->a:I

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/g;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/g;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/g;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;

    check-cast v1, Lcom/google/firebase/messaging/p;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;->c(Lcom/samsung/android/kmxservice/trustchain/fcm/FcmEventReceiver;Lcom/google/firebase/messaging/p;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    check-cast v1, Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->j(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    return-void

    :goto_0
    check-cast p0, Lpa/e;

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;->getSender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lpa/e;->a(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
