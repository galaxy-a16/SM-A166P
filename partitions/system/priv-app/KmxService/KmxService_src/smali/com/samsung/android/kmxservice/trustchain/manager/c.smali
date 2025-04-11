.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/manager/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/c;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/c;->b:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/c;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/c;->b:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->a(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)V

    return-void

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->b(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
