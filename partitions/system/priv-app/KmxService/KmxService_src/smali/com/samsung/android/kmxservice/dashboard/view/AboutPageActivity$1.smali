.class Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->setUpdateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->i(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->j(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "KMX|AboutSecurityStatusActivity"

    const-string v0, "update app!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    const-string v0, "packageList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mPackageList:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->k(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->j(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/TextView;

    move-result-object p0

    const p1, 0x7f1200d1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->j(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/TextView;

    move-result-object p0

    const p1, 0x7f120065

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
