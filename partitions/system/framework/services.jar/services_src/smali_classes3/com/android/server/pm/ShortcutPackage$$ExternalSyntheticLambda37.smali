.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/io/File;

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Ljava/io/File;Landroid/util/ArraySet;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$0:[Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$1:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$0:[Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$1:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$2:Ljava/io/File;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$oU2D66SRJ2541C381QiEtAbc4rY([Ljava/io/File;Landroid/util/ArraySet;Ljava/io/File;)V

    return-void
.end method
