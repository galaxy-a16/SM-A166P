.class public final synthetic Lcom/samsung/android/kmxservice/dashboard/view/f;
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

    iput p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/f;->a:I

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/dashboard/view/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/f;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/dashboard/view/f;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;

    check-cast v1, Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;->a(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;Ljava/util/Map;)V

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    check-cast v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->e(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
