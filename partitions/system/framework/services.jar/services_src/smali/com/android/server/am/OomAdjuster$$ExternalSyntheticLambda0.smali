.class public final synthetic Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ServiceThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ServiceThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ServiceThread;

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->$r8$lambda$WwoeZTnUBMxV-JLJr5QQfTatx6U(Lcom/android/server/ServiceThread;)V

    return-void
.end method
