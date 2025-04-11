.class public final synthetic Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

.field public final synthetic f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->$r8$lambda$ZIN-PaT98q97Ksd3yB-1YC2dF1E(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V

    return-void
.end method
