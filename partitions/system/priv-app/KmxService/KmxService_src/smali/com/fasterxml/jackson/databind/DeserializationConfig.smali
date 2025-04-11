.class public final Lcom/fasterxml/jackson/databind/DeserializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<",
        "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
        "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DESER_FEATURE_DEFAULTS:I

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final _coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

.field protected final _ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field protected final _deserFeatures:I

.field protected final _formatReadFeatures:I

.field protected final _formatReadFeaturesToChange:I

.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

.field protected final _parserFeatures:I

.field protected final _parserFeaturesToChange:I

.field protected final _problemHandlers:Lcom/fasterxml/jackson/databind/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/l;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->DESER_FEATURE_DEFAULTS:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;J)V

    iput p4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput p5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/e;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/e;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/e;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/e;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/e;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/e;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/util/l;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/e;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)V
    .locals 7

    .line 13
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/e;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)V

    sget p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->DESER_FEATURE_DEFAULTS:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    sget-object p2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    const/4 p1, 0x0

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    return-void
.end method

.method private varargs _withJsonReadFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    array-length v6, p1

    const/4 v7, 0x0

    move v8, v4

    move v9, v5

    move v5, v2

    move v2, v7

    move v7, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v4

    or-int/2addr v8, v4

    or-int/2addr v9, v4

    instance-of v4, v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v3

    or-int/2addr v5, v3

    or-int/2addr v7, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v5, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v7, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    move-object v0, v10

    move-object v1, p0

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object v1, v10

    :goto_1
    return-object v1
.end method

.method private varargs _withoutJsonReadFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    array-length v6, p1

    const/4 v7, 0x0

    move v8, v4

    move v9, v5

    move v5, v2

    move v2, v7

    move v7, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v4

    not-int v10, v4

    and-int/2addr v8, v10

    or-int/2addr v9, v4

    instance-of v4, v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v3

    not-int v4, v3

    and-int/2addr v5, v4

    or-int/2addr v7, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v5, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v7, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    move-object v0, v10

    move-object v1, p0

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object v1, v10

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final _with(Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)V

    return-object v0
.end method

.method public bridge synthetic _with(Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_with(Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public final _withMapperFeatures(J)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 10

    .line 1
    new-instance v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    return-object v9
.end method

.method public bridge synthetic _withMapperFeatures(J)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withMapperFeatures(J)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->findCoercion(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p0

    return-object p0
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p0

    return-object p0
.end method

.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/g;
    .locals 3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_1

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/e;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;)Ljava/util/Collection;

    move-result-object v0

    :cond_1
    invoke-interface {v1, p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/i;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/g;

    move-result-object p0

    return-object p0
.end method

.method public getBaseSettings()Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    return-object p0
.end method

.method public getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    if-nez p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    :cond_0
    return-object p0
.end method

.method public final getDeserializationFeatures()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    return p0
.end method

.method public final getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    return-object p0
.end method

.method public getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/l;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    return-object p0
.end method

.method public final hasDeserializationFeatures(I)Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSomeOfFeatures(I)Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/g;->h1(II)V

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/core/g;->g1(II)V

    :cond_1
    return-object p1
.end method

.method public initialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/g;->h1(II)V

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/core/g;->g1(II)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->m1()V

    :cond_2
    return-object p1
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/s;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p0

    return-object p0
.end method

.method public introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/s;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p0

    return-object p0
.end method

.method public introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/c;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/s;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p0

    return-object p0
.end method

.method public introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/s;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/r;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/cfg/f;)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_datatypeFeatures:Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;->isEnabled(Lcom/fasterxml/jackson/databind/cfg/f;)Z

    move-result p0

    return p0
.end method

.method public final requiresFullValue()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result p0

    return p0
.end method

.method public useRootWrapping()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    return p0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int v7, v0, v1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int v8, v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne p1, v7, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne p1, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public with(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withJsonReadFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v1

    or-int v9, v0, v1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result p1

    or-int v10, v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne p1, v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 10

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    or-int v5, v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v5, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    array-length v0, p2

    const/4 v1, 0x0

    move v6, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object p1, p2, v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    or-int/2addr v6, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v6, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/e;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/e;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/e;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/e;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/e;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/e;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/e;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/e;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/e;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/e;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    array-length v2, p1

    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    or-int/2addr v9, v0

    or-int/2addr v10, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne p1, v10, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withJsonReadFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    array-length v3, p1

    move v11, v0

    move v12, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v0

    or-int/2addr v11, v0

    or-int/2addr v12, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne p1, v11, :cond_2

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne p1, v12, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    array-length v1, p1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v0

    or-int/2addr v7, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v7, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public withHandler(Lcom/fasterxml/jackson/databind/deser/m;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/l;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/l;->b:Lcom/fasterxml/jackson/databind/util/l;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    invoke-direct {v1, v2, p1}, Lcom/fasterxml/jackson/databind/util/l;-><init>(Lcom/fasterxml/jackson/databind/util/l;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/l;)V

    return-object v0
.end method

.method public withNoProblemHandlers()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/l;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/l;)V

    return-object v0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez p1, :cond_0

    if-nez v0, :cond_1

    return-object p0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int v7, v0, v1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int v8, v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne p1, v7, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne p1, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public without(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withoutJsonReadFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v1

    not-int v1, v1

    and-int v9, v0, v1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result p1

    or-int v10, v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne p1, v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 10

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int v5, v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v5, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    array-length v0, p2

    const/4 v1, 0x0

    move v6, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object p1, p2, v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr v6, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v6, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    array-length v2, p1

    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    not-int v1, v0

    and-int/2addr v9, v1

    or-int/2addr v10, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne p1, v10, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withoutJsonReadFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    array-length v3, p1

    move v11, v0

    move v12, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v0

    not-int v2, v0

    and-int/2addr v11, v2

    or-int/2addr v12, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne p1, v11, :cond_2

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne p1, v12, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    array-length v1, p1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v0

    not-int v0, v0

    and-int/2addr v7, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v7, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method
