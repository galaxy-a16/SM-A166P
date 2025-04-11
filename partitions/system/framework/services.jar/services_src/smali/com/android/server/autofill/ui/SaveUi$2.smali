.class public Lcom/android/server/autofill/ui/SaveUi$2;
.super Ljava/lang/Object;
.source "SaveUi.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;

.field public final synthetic val$info:Landroid/service/autofill/SaveInfo;

.field public final synthetic val$isUpdate:Z

.field public final synthetic val$yesButton:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$JiJqxcuhDNYVFDQ5qLgqH_9qnQs(Lcom/android/server/autofill/ui/SaveUi$2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$2;->lambda$onCheckedChanged$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aPmrgUuE7IT3E1EmK3lIrUKG4Z4(Lcom/android/server/autofill/ui/SaveUi$2;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi$2;->lambda$onCheckedChanged$0(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/TextView;Landroid/service/autofill/SaveInfo;Z)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$info:Landroid/service/autofill/SaveInfo;

    iput-boolean p4, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$isUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCheckedChanged$0(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$2;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {p0}, Lcom/android/server/autofill/ui/SaveUi;->-$$Nest$fgetmListener(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->semGetNegativeSecondActionListener()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method private synthetic lambda$onCheckedChanged$1(Landroid/view/View;)V
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$2;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {p0}, Lcom/android/server/autofill/ui/SaveUi;->-$$Nest$fgetmListener(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onSave()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 395
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    const p2, 0x10401f7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 397
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$info:Landroid/service/autofill/SaveInfo;

    new-instance v0, Lcom/android/server/autofill/ui/SaveUi$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/autofill/ui/SaveUi$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/SaveUi$2;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 399
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$isUpdate:Z

    if-eqz p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    const p2, 0x104020d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    const p2, 0x1040206

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 404
    :goto_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    new-instance p2, Lcom/android/server/autofill/ui/SaveUi$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/autofill/ui/SaveUi$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/SaveUi$2;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
