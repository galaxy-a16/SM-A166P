.class public final synthetic Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget p0, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->$r8$lambda$Fwk20uwVRMGgttfWEd3wmQSjWjg(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method
