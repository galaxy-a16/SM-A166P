.class public abstract Lca/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/NativeHelper;->getSALTKey()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lca/a;->a:Ljava/lang/String;

    return-void
.end method
