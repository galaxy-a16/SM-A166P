.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda108;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$PMxeNr2DOkL0v058BdvkLMGMzUU(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
