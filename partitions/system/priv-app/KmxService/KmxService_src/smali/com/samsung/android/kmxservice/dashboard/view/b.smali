.class public final synthetic Lcom/samsung/android/kmxservice/dashboard/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/b;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/b;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->h(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/view/OpenSourceLicensesActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/OpenSourceLicensesActivity;->e(Lcom/samsung/android/kmxservice/dashboard/view/OpenSourceLicensesActivity;Landroid/view/View;)V

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->a(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
