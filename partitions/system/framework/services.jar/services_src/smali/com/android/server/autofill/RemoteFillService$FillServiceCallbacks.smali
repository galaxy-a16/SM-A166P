.class public interface abstract Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# virtual methods
.method public abstract onFillRequestFailure(ILjava/lang/CharSequence;)V
.end method

.method public abstract onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
.end method

.method public abstract onFillRequestTimeout(I)V
.end method

.method public abstract onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end method

.method public abstract onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
.end method
