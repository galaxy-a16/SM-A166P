.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$FkW6pH53EL_QJlyT9OhRmIS4dtA(Lcom/android/server/pm/PackageManagerService;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
