.class public final synthetic Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ScreenCurtainController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ScreenCurtainController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ScreenCurtainController;

    iput p2, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ScreenCurtainController;

    iget v1, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/power/ScreenCurtainController;->$r8$lambda$2x2rYu43P0vbdsGFzvige7AEL4U(Lcom/android/server/power/ScreenCurtainController;II)V

    return-void
.end method
