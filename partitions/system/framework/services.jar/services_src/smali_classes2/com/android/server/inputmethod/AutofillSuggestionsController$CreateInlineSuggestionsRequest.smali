.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;
.super Ljava/lang/Object;
.source "AutofillSuggestionsController.java"


# instance fields
.field public final mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

.field public final mPackageName:Ljava/lang/String;

.field public final mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 56
    iput-object p2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 57
    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    return-void
.end method
