.class public Lcom/android/server/autofill/ui/AutoFillUI$3;
.super Ljava/lang/Object;
.source "AutoFillUI.java"

# interfaces
.implements Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$log:Landroid/metrics/LogMaker;

.field public final synthetic val$mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 528
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmMetricsLogger(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onCanceled()V
    .locals 2

    const/4 v0, 0x2

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 512
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 513
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNegativeCtaButtonClicked(Z)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 518
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestFallbackFromFillDialog()V

    return-void
.end method

.method public onDatasetPicked(Landroid/service/autofill/Dataset;)V
    .locals 3

    const/4 v0, 0x4

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 486
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 487
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetPositiveCtaButtonClicked(Z)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 491
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p0

    const/4 v2, 0x3

    invoke-interface {v1, p0, v0, p1, v2}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->fill(IILandroid/service/autofill/Dataset;I)V

    :cond_1
    return-void
.end method

.method public onDismissed()V
    .locals 2

    const/4 v0, 0x5

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 501
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 502
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDialogDismissed(Z)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 505
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 506
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestFallbackFromFillDialog()V

    return-void
.end method

.method public onResponsePicked(Landroid/service/autofill/FillResponse;)V
    .locals 6

    const/4 v0, 0x3

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 469
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    const v2, 0xffff

    .line 473
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x3

    .line 471
    invoke-interface/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 1

    .line 480
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->onShown(I)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V

    return-void
.end method
