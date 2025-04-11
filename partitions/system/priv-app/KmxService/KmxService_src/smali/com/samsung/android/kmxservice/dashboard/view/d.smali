.class public final synthetic Lcom/samsung/android/kmxservice/dashboard/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/d;->a:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/d;->a:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->f(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void
.end method
