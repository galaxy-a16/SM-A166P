.class public final synthetic Lcom/samsung/android/kmxservice/dashboard/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/a;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/a;->b:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/a;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/a;->b:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->g(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->e(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/view/View;)V

    return-void

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->h(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
