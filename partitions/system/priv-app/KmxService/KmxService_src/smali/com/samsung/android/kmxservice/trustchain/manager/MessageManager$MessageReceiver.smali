.class Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageReceiver"
.end annotation


# instance fields
.field mMessengerAdapter:Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;->mMessengerAdapter:Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

    return-void
.end method


# virtual methods
.method public acceptMessage([B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;->mMessengerAdapter:Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

    invoke-virtual {v0, p1}, Lpa/c;->dispatch([B)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$MessageReceiver;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->refreshTimerNormalMessage()V

    return-void
.end method
