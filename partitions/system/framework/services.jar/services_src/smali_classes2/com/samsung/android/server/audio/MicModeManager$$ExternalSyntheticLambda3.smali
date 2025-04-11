.class public final synthetic Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda3;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda3;->f$0:Landroid/content/Intent;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->$r8$lambda$frhefA2rZZ3hnOUhOUxo5Lfq3v8(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
