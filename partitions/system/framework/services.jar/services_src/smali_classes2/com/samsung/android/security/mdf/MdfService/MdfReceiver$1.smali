.class public Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;
.super Ljava/lang/Object;
.source "MdfReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;

.field public final synthetic val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->this$0:Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;

    iput-object p2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sendSamsungAnalyticsMultiLog()V

    return-void
.end method
