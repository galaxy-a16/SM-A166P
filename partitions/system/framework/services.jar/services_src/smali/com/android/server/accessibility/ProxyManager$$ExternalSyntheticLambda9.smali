.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$0:I

    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$0:I

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/ProxyManager;->$r8$lambda$8P_Ezn9Tq1s2HUCVNI7-kE-iEmI(IILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method
