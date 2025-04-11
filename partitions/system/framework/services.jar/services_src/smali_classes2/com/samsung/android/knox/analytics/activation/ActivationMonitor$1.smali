.class public Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;
.super Ljava/lang/Object;
.source "ActivationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootChecking() - run"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fputmIsOnBootCheckings(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckDOOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckPOOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckKLMOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckKesOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckELMOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckB2COnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckConditionsToStart(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fputmIsOnBootCheckings(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Z)V

    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bootChecking() - finished"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
