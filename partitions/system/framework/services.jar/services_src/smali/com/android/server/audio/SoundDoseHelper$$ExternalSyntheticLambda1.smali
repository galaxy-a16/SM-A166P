.class public final synthetic Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/SoundDoseRecord;


# direct methods
.method public synthetic constructor <init>(Landroid/media/SoundDoseRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;->f$0:Landroid/media/SoundDoseRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;->f$0:Landroid/media/SoundDoseRecord;

    check-cast p1, Landroid/media/SoundDoseRecord;

    invoke-static {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->$r8$lambda$fZrQvNDA7FAADuWESel6adEeyAE(Landroid/media/SoundDoseRecord;Landroid/media/SoundDoseRecord;)Z

    move-result p0

    return p0
.end method
