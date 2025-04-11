.class public abstract Landroidx/room/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/a0;->version:I

    return-void
.end method


# virtual methods
.method public abstract createAllTables(La1/b;)V
.end method

.method public abstract dropAllTables(La1/b;)V
.end method

.method public abstract onCreate(La1/b;)V
.end method

.method public abstract onOpen(La1/b;)V
.end method

.method public abstract onPostMigrate(La1/b;)V
.end method

.method public abstract onPreMigrate(La1/b;)V
.end method

.method public abstract onValidateSchema(La1/b;)Landroidx/room/b0;
.end method

.method public validateMigration(La1/b;)V
    .locals 0

    const-string p0, "db"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "validateMigration is deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
