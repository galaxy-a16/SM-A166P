.class public final synthetic Lcom/samsung/android/kmxservice/dashboard/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/e;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/e;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->a(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;)V

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->f(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
